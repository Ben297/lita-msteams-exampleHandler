module Lita
  module Handlers
    class MsteamsExamplehandler < Handler

      http.get "/greet_browser", :greet

      def greet(request, response)
        response.body << "Hello, #{request.user_agent}!"
      end


      http.get '/example_hook', :webhook

      def webhook(request, _response)
        room_id = 'a:1fP7w5DA2OhHrqZgaK0brrHULJUX73bEPg4gQSZxTVwJQSECjEmLGkHWHme8TbPNrge2GtLyyxogoEVCnQuHnsQbcvvdR3iZrNGnLcyBwjCZCJshp2ilXuFMVkooCIKeB'
        #gerneral room_id = '19:44c2108a21bd4f188cc8f2fbc6c46d46@thread.skype'
        #room_id = '19:2947bfb3cd74474bbd7e625ad0c37d26@thread.skype'
        puts "i was here"
        user = Lita::User.find_by_name('Setzer Bennet')
        room = Lita::Room.new(room_id)
        source = Lita::Source.new(
            user: user,
            room: room
        )
        # only works with sources
        msg = "send via mention"
        robot.send_messages_with_mention(source, msg)

        # user as string works
        msg = %w[test1 test2]
        robot.send_message(source, msg)
      end
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
