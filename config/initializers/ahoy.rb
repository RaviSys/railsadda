class Ahoy::Store < Ahoy::DatabaseStore
end

Ahoy.visit_duration = 1.hours

# set to true for JavaScript tracking
Ahoy.api = false

# better user agent parsing
Ahoy.user_agent_parser = :device_detector

# better bot detection
Ahoy.bot_detection_version = 2
