module Travis
  module Hub
    class Processing
      class Thread
        def start
          yield
        end

        def run_periodically(interval, &block)
          Thread.new do
            block.call
            sleep(interval)
          end
        end
      end
    end
  end
end


