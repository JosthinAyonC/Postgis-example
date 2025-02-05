package jayon.example.geolocalization.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jayon.example.geolocalization.service.LocationsService;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/locations")
@RequiredArgsConstructor
public class LocationsController {
    @Autowired
    private LocationsService locationService;

    @GetMapping(produces = "application/json")
    public String getAllLocations() {
        return locationService.getAllLocationsAsGeoJSON();
    }
}
