package org.example.exercice4;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
public class Cat {
    private String name;
    private String breed;
    private String meal;
    private LocalDate birth;

    public Cat(String name, String breed, String meal, LocalDate birth) {
        this.name = name;
        this.breed = breed;
        this.meal = meal;
        this.birth = birth;
    }
}
