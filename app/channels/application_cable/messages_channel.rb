#to be used to stream and broadcast
class MessagesChannel < ApplicationCable::Channel 
  def subscribed
  	stream_from 'messages'
  end
end