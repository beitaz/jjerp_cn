class DumpWorker
  include Sidekiq::Worker

  def perform(*_args)
    dump_file = Rails.root.join('public', 'dump', "#{Time.now.strftime('%Y%m%d%H%M%S')}.mssql").to_path
    puts 'MySQL Backup Job Start...'
    system "bash -cl 'mysqldump -uroot -p123abc.. jjerp_cn_development > #{dump_file}'"
    puts 'MySQL Backup Done!'
  end
end
