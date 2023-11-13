class SidekiqJobWorkerJob
  include Sidekiq::Job

  def perform(*args)
    puts "Job started with #{args}"
  end
end
