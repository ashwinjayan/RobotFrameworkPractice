
*** Variables ***
# Configuration
${BROWSER} =  chrome
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =  profile/secure/login
${INVALID_CREDENTIALS_PATH_CSV} =  C:\\Workspace\\Robot Framework\\data-driven-ext-csv\\Data\\Users.csv