package it.ex.fabrick.repository;

import it.ex.fabrick.model.entity.CloseApproach;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface CloseApproachRepository extends JpaRepository<CloseApproach, String> {

    List<CloseApproach> findByAsteroidIdAndCloseApproachDateGreaterThanEqualOrderByCloseApproachDateAsc(Integer asteroidId, Date fromDate);

    List<CloseApproach> findByAsteroidIdAndCloseApproachDateGreaterThanEqualAndOrbitingBodyNotOrderByCloseApproachDateAsc(Integer asteroidId, Date fromDate, String orbitingBody);

}