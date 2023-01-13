<?php



connection =(HttpURLConnection) new URL("https://maf.pagosonline.net/ws/fp/check.js?id="
+mpUvo.getTransaction().getDeviceSessionId() + params[1]).openConnection();

connection.setReadTimeout(READ_TIME_OUT);
connection.setConnectTimeout(CONNECTION_TIME_OUT);



?>