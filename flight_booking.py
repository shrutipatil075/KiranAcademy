from abc import ABC, abstractmethod


class Flight:
    def __init__(self, code, airline, source, destination, seats, base_fare):
        self.__code = code
        self.__airline = airline
        self.__source = source
        self.__destination = destination
        self.__available_seats = seats
        self.__base_fare = base_fare

    @property
    def code(self):
        return self.__code

    @property
    def airline(self):
        return self.__airline

    @property
    def source(self):
        return self.__source

    @property
    def destination(self):
        return self.__destination

    @property
    def available_seats(self):
        return self.__available_seats

    @property
    def base_fare(self):
        return self.__base_fare

    def has_seats(self, count):
        return count <= self.__available_seats

    def reserve_seats(self, count):
        # Seat count is changed only by this method after validation.
        if count <= 0 or not self.has_seats(count):
            return False
        self.__available_seats -= count
        return True

    def display(self):
        print(
            f"{self.code:<8} | {self.airline:<15} | "
            f"{self.source:<12} to {self.destination:<12} | "
            f"Seats: {self.available_seats:<3} | Fare: Rs.{self.base_fare}"
        )


class Passenger(ABC):
    def __init__(self, name, age):
        self.name = name
        self.age = age

    @abstractmethod
    def get_discount_percentage(self):
        """Return the discount percentage for this passenger type."""
        pass
