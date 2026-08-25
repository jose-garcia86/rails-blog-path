class BlogPost < ApplicationRecord
  has_rich_text :content

  validates :title, :content, presence: true
  validates :content, presence: true

  scope :sorted, -> { order(arel_table[:published_at].desc.nulls_last).order(updated_at: :desc)}
  scope :draft, -> { where(published_at: nil) }
  scope :published, -> { where("published_at <= ?", Time.now) }
  scope :scheduled, -> { where("published_at > ?", Time.now) }

  def draft?
    published_at.nil?
  end

  def published?
    published_at? && published_at <= Time.current
  end

  def scheduled?
    published_at? && published_at > Time.current
  end
end
