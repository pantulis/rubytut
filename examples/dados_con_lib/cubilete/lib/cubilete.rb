class Cubilete

        def initialize
                @d1 = Dado.new()
                @d2 = Dado.new()
                @d3 = Dado.new()
        end

        def run(opts)
                @times = opts[:times]
                @results = []
                @times.times do
                        @results << [@d1.throw(), @d3.throw(), @d3.throw()]
                end
        end

        def analyze
                return unless block_given?

                hits = 0
                @results.each do |throw|
                        hits += 1 if yield(throw[0],throw[1],throw[2])
                end
                puts "Hits = #{hits}/#{@results.length}"
        end
end