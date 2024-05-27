package it.ex.fabrick.service;

import it.ex.fabrick.mapper.AirportMapper;
import it.ex.fabrick.model.dto.AirportDto;
import it.ex.fabrick.model.entity.Airport;
import it.ex.fabrick.repository.AirportRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class AirportService {

    @Autowired
    private AirportRepository airportRepository;

    @Autowired
    private AirportMapper airportMapper;

    public List<AirportDto> getClosestAirport(String airportId, double closestBy) {
        List<AirportDto> responseList = new ArrayList<>();
        if (closestBy == 0.0) {
            responseList.add(airportMapper.entityToDto(airportRepository.findById(airportId)
                    .orElseThrow(()-> new IllegalArgumentException(String.format("Airport with id: %s not found", airportId)))));
        } else {
            Airport airport = airportRepository.findById(airportId).orElseThrow(()-> new IllegalArgumentException(String.format("Airport with id: %s not found", airportId)));
            responseList.addAll(airportMapper.listEntityToListDto(airportRepository
                    .findByLatitudeGreaterThanEqualAndLatitudeLessThanEqualAndLongitudeGreaterThanEqualAndLongitudeLessThanEqual(
                            airport.getLatitude()-closestBy, (airport.getLatitude()+closestBy), airport.getLongitude()-closestBy, (airport.getLongitude()+closestBy))));
        }
        log.debug("Airports found: {}", responseList.size());
        return responseList;
    }

}