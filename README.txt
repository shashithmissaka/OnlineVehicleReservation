Colombo Car Rental - Online Vehicle Reservation System

User Guide

1. Steps to Book a Car
1. Login/Register:
   - Users must log in to the system using their credentials or register if they are new.

2. Search for Available Cars:
   - Select the Start Location and Destination from the dropdown list.
   - Click the Search button to view available cars.

3. Select a Car:
   - Choose an available car from the search results.
   - The system displays the car details, price, and assigned driver details.

4. Confirm Booking:
   - Click the Book Now button.
   - A confirmation page will display the booking details.
   - Confirm the booking to proceed to payment.

5. Make Payment:
   - Select a payment method (Stripe/PayPal).
   - Complete the payment process.
   - Upon successful payment, a receipt is generated, and a QR-coded invoice is provided.

6. Receive Booking Confirmation:
   - The user receives an email confirmation with the booking details and receipt.

2. Admin Guide

Admin Login Credentials:
- Username: admin
- Password: admin

Admin Features:
1. Manage Cars:
   - Add, update, or delete car details.

2. Manage Bookings:
   - View all customer bookings.
   - Assign or change drivers.
   - Update booking statuses.

3. Manage Payments:
   - View completed and pending payments.
   - Generate invoices.

4. Manage Users:
   - View registered users.
   - Delete or update user details.

5. View Reports:
   - Generate booking and revenue reports.

Database Structure
The system uses a MySQL database (cab). Key tables include:
- users (Stores user details)
- cars (Stores car availability and details)
- bookings (Manages car reservations)
- payments (Stores payment transactions)
- drivers (Stores driver details)
- distances (Stores predefined route distances)

Installation Guide
1. Set up the Database:
   - Import the database file into MySQL.

2. Configure the Project in Eclipse:
   - Import the project into Eclipse.
   - Ensure database credentials in DBConnection.java are correct.

3. Run the Application:
   - Deploy the project on Tomcat Server.
   - Access the system via http://localhost:8080/ColomboCarRental/

Future Enhancements
- Implement Google Maps API for real-time distance calculation.
- Add driver availability tracking.
- Enable coupon-based discounts.


