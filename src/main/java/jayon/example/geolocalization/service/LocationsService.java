package jayon.example.geolocalization.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jayon.example.geolocalization.repository.AvailableLocationsRep;

@Service
public class LocationsService {
    @Autowired
    private AvailableLocationsRep locationRepository;

    public String getAllLocationsAsGeoJSON() {
        return locationRepository.findAllAsGeoJSON();
    }
}
