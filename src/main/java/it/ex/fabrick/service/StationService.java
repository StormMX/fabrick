package it.ex.fabrick.service;

import it.ex.fabrick.mapper.StationMapper;
import it.ex.fabrick.model.dto.StationDto;
import it.ex.fabrick.model.entity.Station;
import it.ex.fabrick.repository.StationRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class StationService {

    @Autowired
    private StationRepository stationRepository;

    @Autowired
    private StationMapper stationMapper;

    public List<StationDto> getClosestStation(String stationId, double closestBy) {
        List<StationDto> responseList = new ArrayList<>();
        if (closestBy == 0.0) {
            responseList.add(stationMapper.entityToDto(stationRepository.findById(stationId)
                    .orElseThrow(()-> new IllegalArgumentException(String.format("Airport with id: %s not found", stationId)))));
        } else {
            Station station = stationRepository.findById(stationId).orElseThrow(()-> new IllegalArgumentException(String.format("Airport with id: %s not found", stationId)));
            responseList.addAll(stationMapper.listEntityToListDto(stationRepository
                    .findByLatitudeGreaterThanEqualAndLatitudeLessThanEqualAndLongitudeGreaterThanEqualAndLongitudeLessThanEqual(
                            station.getLatitude()-closestBy, (station.getLatitude()+closestBy), station.getLongitude()-closestBy, (station.getLongitude()+closestBy))));
        }
        log.debug("Stations found: {}", responseList.size());
        return responseList;
    }

}