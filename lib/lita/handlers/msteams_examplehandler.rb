module Lita
  module Handlers
    class MsteamsExamplehandler < Handler
      # insert handler code here
      route(/^hello\s+(.+)/, :hello)
      route(/^hello/, :hello)

      # example handler for replying to a cmd posted in teams chat
      def hello(response)
        response.reply('Hello')
      end
      Lita.register_handler(self)
    end
  end
end
