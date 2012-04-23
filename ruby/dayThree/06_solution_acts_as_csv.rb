class ActsAsCsv
    def read
        file = File.new(self.class.to_s.downcase + '.txt')
        @headers = file.gets.chomp.split(', ')

        file.each do |row|
            # use result of new class here, which works with method_missing
            @result << CsvRow.new(@headers, row.chomp.split(', '))
        end
    end
  
    def headers
        @headers
    end
  
    def csv_contents
        @result
    end

    def each(&block)
        @result.each(&block)
    end
  
    def initialize
        @result = []
        read
    end
end

class CsvRow
    def initialize(headers, data)
        @headers = headers
        @data = data
    end

    def method_missing(name, *args)
        index = @headers.index(name.to_s)
        @data[index]
    end
end

class RubyCsv < ActsAsCsv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each { |row| puts row.one}
