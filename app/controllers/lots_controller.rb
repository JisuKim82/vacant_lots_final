class LotsController < ApplicationController
  def welcome
    @boroughs=Lot.boroughs
  end

  def search
    # raise params.inspect
    @x ||= 0
    @y ||= @x+8

    @borough = params[:borough]
    @lots=Lot.where(borough: @borough)[@x..@y]
    @count=Lot.where(borough:@borough).count
  end

  def results
    @x = params[:x].to_i
    @y = @x+8

    @borough = params[:borough]
    @lots=Lot.where(borough: @borough)[@x..@y]
    @count=Lot.where(borough: @borough).count
  end

end