class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.booth_id= params[:booth_id]
    name = ['치킨뜯는','화난','겸손한','깜찍한','끔직한','애교쟁이','다리털미는','겨땀난','밥잘사주는','모태솔로','어리둥절한','바람둥이','연하킬러','부끄러운','대식가','사랑스러운','술잘먹는','자체휴강한','귀여운','잘생긴','행복한','손가락튕기는','못생긴','놀란','겁먹은','근엄한','춤추는','분개하는','갈비뜯는','배고픈','거지된','신난','해맑은','멍청한','이쁜척하는','허세쩌는','우울한','족발뜯는','닭꼬치뜯는','익명의','골병든','착한','춤추는','날씬한','세젤예']
    result=name.sample(1)
    name_1 = ['라이언','콘','어피치','튜브','제이쥐','네오','프로도','윤동환','스누피','로키','타노스','스파이더맨','헐크','토르','아이언맨','미니언','코코몽','키티','뿌까','미니마우스','미키마우스','세일러문','마이콜','도우너','둘리','가오나시','퉁퉁이','엘사','그루트','팅커벨','피터팬','조석','알라딘','피글렛','푸우','신데렐라','백설공주','라푼젤','세모','진구','제리','햄토리','코난','짱구','체리','진구','가영이','도라에몽','스폰지밥','징징이','겸손이','뚱이','심슨','리사','흰둥이','짱아','맹구','훈이','윤동환','뽀로로','크롱','루피','조로','뽀','나나','보라돌이','뚜비','샹크스','우솝','토토로','스머프','피카츄','리자몽','파이리','메타몽','잠만보',]
    result_1=name_1.sample(1)
    comment.result=result[0]
    comment.result_1=result_1[0]
    comment.save
    redirect_to :back
  end
  def comment_params
    params.require(:comment).permit(:content)
  end
  def fucking
    @comment_all = Comment.all
  end
  def destroy
    @comment =Comment.find params[:id]
    @comment.destroy
    redirect_to :back
  end
end

