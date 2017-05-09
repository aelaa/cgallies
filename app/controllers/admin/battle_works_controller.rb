class Admin::BattleWorksController < Admin::ApplicationController
  def index
    render locals: {
      battle: current_battle,
      battle_works: Battle::Work.all
    }
  end

  def show
    render locals: {
      battle: current_battle,
      battle_work: current_battle_work
    }
  end

  def new
    render locals: {
      battle: current_battle,
      battle_work: current_battle.works.new
    }
  end

  def edit
    render locals: {
      battle: current_battle,
      battle_work: current_battle_work
    }
  end

  def create
    battle_work = current_battle.works.new(battle_work_params)

    if battle_work.save
      redirect_to [:admin, battle_work], notice: 'Battle work was successfully created.'
    else
      render :new, locals: {
        battle: current_battle,
        battle_work: battle_work
      }
    end
  end

  def update
    if current_battle_work.update(battle_work_params)
      redirect_to [:admin, current_battle_work], notice: 'Battle work was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    current_battle_work.destroy
    redirect_to admin_battle_works_url, notice: 'Battle work was successfully destroyed.'
  end

  private

  def current_battle_work
    @battle_work ||= Battle::Work.find(params[:id])
  end

  def current_battle
    @battle ||= Battle.find(params[:battle_id])
  end

  def battle_work_params
    params.require(:battle_work).permit(:battle_id, :author, :description, :cover)
  end
end
