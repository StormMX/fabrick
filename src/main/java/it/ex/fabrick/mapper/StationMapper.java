package it.ex.fabrick.mapper;

import it.ex.fabrick.model.dto.StationDto;
import it.ex.fabrick.model.entity.Station;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface StationMapper {

    Station dtoToEntity(StationDto dto);

    StationDto entityToDto(Station entity);

    List<Station> listDtoToListEntity(List<StationDto> dtoList);

    List<StationDto> listEntityToListDto(List<Station> entityList);

}