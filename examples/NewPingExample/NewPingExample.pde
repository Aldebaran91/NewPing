// ---------------------------------------------------------------------------
// Example NewPing library sketch that does a ping about 10 times per second.
// ---------------------------------------------------------------------------

#include <NewPing.h>

#define TRIG_PIN 12
#define ECHO_PIN 11
#define MAX_DIST 400

NewPing sonar(TRIG_PIN, ECHO_PIN, MAX_DIST);

void setup() {
  Serial.begin(9600); // Open serial monitor at 9600 baud to see ping results.
  Serial.println("Kalman_cm;RAW_cm;");
}

void loop() {
  delay(100);
  Serial.print(sonar.ping_cm_kalman()); // Send ping, get distance in cm and print result (0 = outside set distance range)
  Serial.print(";");
  Serial.print(sonar.ping_cm()); // Send ping, get distance in cm and print result (0 = outside set distance range)
  Serial.println(";");
}
