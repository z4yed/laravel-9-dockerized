# laravel-and-react-dockerized

## Steps:

- Install docker & docker-compose in your local machine.
- Clone this repo.
- Run `docker-compose up --build`
- login to backend container and run below two commands:
  - `php artisan key:generate`
  - `php artisan migrate:fresh`
- API should run in port '8000' and the frontend should run in '3000'
