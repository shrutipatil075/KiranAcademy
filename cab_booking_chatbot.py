
import random

while True:
    print("\n===== CAB BOOKING CHATBOT =====")
    print("1. Book Ride")
    print("2. Exit")

    try:
        choice = int(input("Enter your choice: "))
    except ValueError:
        print("Invalid input! Please enter 1 or 2.")
        continue

    if choice == 1:

        print("\nChoose Cab Type:")
        print("1. Auto - Rs.12/km")
        print("2. Sedan - Rs.18/km")
        print("3. SUV - Rs.25/km")

        try:
            cab_choice = int(input("Enter cab choice: "))
        except ValueError:
            print("Invalid cab choice!")
            continue

        if cab_choice == 1:
            cab_type = "Auto"
            rate = 12
        elif cab_choice == 2:
            cab_type = "Sedan"
            rate = 18
        elif cab_choice == 3:
            cab_type = "SUV"
            rate = 25
        else:
            print("Invalid cab choice!")
            continue

        print("\nChoose Route:")
        print("1. Pune Station to Shivajinagar - 5 km")
        print("2. Swargate to Kothrud - 8 km")
        print("3. Hinjawadi to Wakad - 10 km")

        try:
            route_choice = int(input("Enter route choice: "))
        except ValueError:
            print("Invalid route choice!")
            continue

        if route_choice == 1:
            source = "Pune Station"
            destination = "Shivajinagar"
            distance = 5
        elif route_choice == 2:
            source = "Swargate"
            destination = "Kothrud"
            distance = 8
        elif route_choice == 3:
            source = "Hinjawadi"
            destination = "Wakad"
            distance = 10
        else:
            print("Invalid route choice!")
            continue

        fare = rate * distance

        print("\n===== FARE DETAILS =====")
        print("Cab Type:", cab_type)
        print("Source:", source)
        print("Destination:", destination)
        print("Distance:", distance, "km")
        print("Rate: Rs.", rate, "/km")
        print("Total Fare: Rs.", fare)

        print("\n1. Confirm & Share OTP")
        print("2. Cancel Ride")

        try:
            confirm_choice = int(input("Enter your choice: "))
        except ValueError:
            print("Invalid choice! Booking cancelled.")
            continue

        if confirm_choice == 1:
            otp = random.randint(1000, 9999)

            print("\nYour OTP is:", otp)
            print("OTP shared successfully.")
            print("Booking Confirmed!")
            print("Cancellation is NOT allowed after OTP sharing.")

        elif confirm_choice == 2:
            print("Ride cancelled before OTP sharing.")
            print("No OTP has been shared.")

        else:
            print("Invalid choice! Ride cancelled.")

    elif choice == 2:
        print("Thank you for using Cab Booking Chatbot!")
        print("Goodbye!")
        break

    else:
        print("Invalid menu choice! Please select 1 or 2.")
