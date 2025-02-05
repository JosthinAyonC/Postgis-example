package jayon.example.geolocalization.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import jayon.example.geolocalization.entity.AvailableLocations;

@Repository
public interface AvailableLocationsRep extends JpaRepository<AvailableLocations, Long> {
    @Query(value = "SELECT json_build_object(" +
            "'type', 'FeatureCollection'," +
            "'features', json_agg(json_build_object(" +
            "'type', 'Feature'," +
            "'geometry', ST_AsGeoJSON(l.geom)::json," +
            "'properties', json_build_object('id', l.id, 'name', l.name, 'radius_perimeter', l.radius_perimeter)" +
            "))) FROM available_locations l", nativeQuery = true)
    String findAllAsGeoJSON();
}
