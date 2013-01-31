require 'devise_lastseenable/hooks/lastseenable'

module Devise
  module Models
    module Lastseenable
      def stamp!
        if self.last_seen.to_i < (Time.now - 5.minutes).to_i
          self.last_seen = DateTime.now
          self.save!
        end
      end
      
      def stamp_logout!
        self.last_sign_out_at = DateTime.now
        self.save!
      end
    end
  end
end