class Update
  include Sidekiq::Worker

  def perform(provider_names)
    Minutes.each { |min|
      min.update_attribute :date, Date.today
    }
  end
end