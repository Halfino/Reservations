class PagesController < ApplicationController
  def room_schedule
    @room = Room.find(params[:room_id])
    @lessons = @room.lessons.sort_by{|x| x.start_at}
  end

  def day_schedule
    @building = Building.find(params[:building_id])
    @lessons = []
    @building.rooms.each do|room|
      room.lessons.each do |lesson|
        @lessons << lesson
      end
    end
    @lessons.sort_by!{|x| x.start_at}
  end
end
