# Docs

  start server
  ./bin/rails c -p 3000

#### Request
  POST
  http://localhost:3000/attachments
  {
    time_slots: time_slots_file,
    fields: fields_file
  }

  you can use postman to test this.
  but make sure the classifer app is running first
  default classifer app url is http://localhost:3001/notify
#### Response
  empty response 204 status code.
