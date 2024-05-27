package it.ex.fabrick.mapper;

import it.ex.fabrick.model.dto.AirportDto;
import it.ex.fabrick.model.entity.Airport;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface AirportMapper {

    Airport dtoToEntity(AirportDto dto);

    AirportDto entityToDto(Airport entity);

    List<Airport> listDtoToListEntity(List<AirportDto> dtoList);

    List<AirportDto> listEntityToListDto(List<Airport> entityList);

}