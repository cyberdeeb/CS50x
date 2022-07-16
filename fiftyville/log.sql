-- Keep a log of any SQL queries you execute as you solve the mystery.
--Who the thief is,
--What city the thief escaped to, and
--Who the thief’s accomplice is who helped them escape
--All you know is that the theft took place on July 28, 2021 and that it took place on Humphrey Street.
SELECT *
FROM crime_scene_reports
WHERE day = 28
    and month = 07
    and year = 2021;

SELECT *
FROM interviews
WHERE day = 28
    and month = 07
    and year = 2021;

SELECT *
FROM bakery_security_logs
WHERE day = 28
    and month = 07
    and year = 2021
    and hour <= 11
    and hour >= 10;

SELECT *
FROM people
WHERE license_plate = "1106N58";

SELECT *
FROM bank_accounts
WHERE person_id = 449774;

SELECT *
FROM atm_transactions
WHERE atm_location = "Humphery Street"
    AND day = 28
    and month = 07
    and year = 2021;

SELECT *
FROM passengers
WHERE passport_number = 5773159633;

SELECT *
FROM flights
WHERE id = 36;

SELECT *
FROM airports
WHERE id = 8 or id = 4;

SELECT *
FROM phone_calls
WHERE caller = '(286) 555-6063'
AND day = 28
    and month = 07
    and year = 2021;

SELECT *
FROM phone_calls
WHERE day = 28
    and month = 07
    and year = 2021;

SELECT *
FROM people
WHERE phone_number = "(676) 555-6554" or phone_number = "(310) 555-8568";

SELECT *
FROM people
WHERE license_plate = "94KL13X";

SELECT *
FROM bank_accounts
WHERE person_id = 686048;

SELECT *
FROM atm_transactions
WHERE account_number = 49610011
    AND day = 28
    and month = 07
    and year = 2021;

SELECT *
FROM phone_calls
WHERE caller = '(367) 555-5533'
AND day = 28
    and month = 07
    and year = 2021;

SELECT *
FROM people
WHERE phone_number in ("(375) 555-8161", "(344) 555-9601", "(022) 555-4052", "(704) 555-5790");