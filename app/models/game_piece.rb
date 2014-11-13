class GamePiece < ActiveRecord::Base

	attr_accessor :x
	attr_accessor :y

	scope :pawns, -> { where(type: 'Pawn') } 
	scope :bishops, -> { where(type: 'Bishop') } 
	scope :knights, -> { where(type: 'Knight') } 
	scope :rooks, -> { where(type: 'Rook') } 
	scope :queens, -> { where(type: 'Queen') } 
	scope :kings, -> { where(type: 'King') } 

	def self.types
      %w(Pawn Bishop Knight Rook King Queen)
    end
end
