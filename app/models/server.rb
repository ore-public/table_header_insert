class Server < ActiveRecord::Base
  attr_accessible :cpu, :ip, :memory, :name, :note, :strage

  def self.header_insert_each(header, per_row)

    yield nil, header

    row_num = 1
    self.all.each do |row|
      yield row, nil
      if (row_num % per_row) == 0
        yield nil, header
      end
      row_num += 1
    end
  end
end
