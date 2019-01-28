class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    User.create(name: 'sidekiq', email: 'sidekiq@example.com')
  end
end
