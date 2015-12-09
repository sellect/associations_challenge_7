class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]
 def index
   @notes = Note.all

 end

 def new
   @note = Note.new
 end

 def create
    @note = Note.new(order_params)

   respond_to do |format|
     if @note.save
       format.html { redirect_to '/customers', notice: 'Note was successfully created.' }
     end
   end
 end





 private
 def set_article
    @note = Note.find(params[:id])
  end
 def order_params
   params.require(:note).permit(:message, :order_id, :customer_id)
 end




end
