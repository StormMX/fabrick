package it.ex.fabrick.repository;

import it.ex.fabrick.model.entity.Airport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AirportRepository  extends JpaRepository<Airport, String> {

    List<Airport> findByLatitudeGreaterThanEqualAndLatitudeLessThanEqualAndLongitudeGreaterThanEqualAndLongitudeLessThanEqual(double lat0, double lat, double lon0, double lon);

}