class Update
  include Sidekiq::Worker

  def perform
    Minute.all.each { |min|
      min.update_attribute :date, Date.today
    }
  end
end