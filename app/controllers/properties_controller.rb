class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  def index
    @properties = Property.all
  end

  def new
    #インスタンスをインスタンス変数に代入。ビューにデータを渡す
    @property = Property.new
  end

  def create
    #paramsメソッドを使用し、送られてきたparameterを全て取得。モデルにDB操作の命令を出す。
    @property = Property.new(property_params)
    if @property.save
      #一覧画面へ遷移して、"物件を登録しました！"とメッセージを表示する。
      redirect_to properties_path, notice: "物件を登録しました！"
    else
    #入力フォーム(new.html.erb)を再描写
    render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: "物件を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: "物件を削除しました！"
  end

  private
  #paramsメソッドにより、parametersの値を取得。
  def property_params
    (params.require(:property).permit(:property_name, :rent, :street_address, :age, :note))
  end

  def set_property
    #parameterのidを利用して、データベースからデータを取得。
    @property = Property.find(params[:id])
  end
end
