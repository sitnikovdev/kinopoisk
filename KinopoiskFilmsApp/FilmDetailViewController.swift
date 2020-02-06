//
//  FilmDetailViewController.swift
//  KinopoiskFilmsApp
//
//  Created by Oleg Sitnikov on 05.02.2020.
//  Copyright © 2020 Oleg Sitnikov. All rights reserved.
//

import TinyConstraints

class FilmDetailViewController: UIViewController {
    // MARK: - Properties
    lazy var contentViewSize =  CGSize(width: self.view.frame.width, height: self.view.frame.height )
    // MARK: - UI Views
    // scroll view
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.262745098, blue: 0.2117647059, alpha: 1)
        view.frame = self.view.bounds
        //        view.contentSize = self.contentViewSize
        return view
    }()
    
    // containers
    lazy var mainContainer: BaseView = {
        let view = BaseView(backgroundColor: #colorLiteral(red: 0.6117647059, green: 0.1529411765, blue: 0.6901960784, alpha: 1))
        view.frame.size = self.contentViewSize
        
        return view
    }()
    
    
    let topGroupContainer = BaseView(backgroundColor:#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
    let bottomContainer = BaseView(backgroundColor:#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
    let leftTopContainer = BaseView(backgroundColor: #colorLiteral(red: 0.1294117647, green: 0.5882352941, blue: 0.9529411765, alpha: 1))
    let rightTopContainer = BaseView(backgroundColor: #colorLiteral(red: 1, green: 0.5960784314, blue: 0, alpha: 1))
    // views
    let pictureImage = BaseImage(#imageLiteral(resourceName: "fight_club.jpg"))
    let originalLabel = BaseLabel(backgroundColor: #colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.2588235294, alpha: 1), text: "Fight Club", textColor: .white)
    let yearLabel = BaseLabel(backgroundColor: #colorLiteral(red: 0.6117647059, green: 0.1529411765, blue: 0.6901960784, alpha: 1), text: "Год: 1994", textColor: .white)
    let rating = BaseLabel(backgroundColor: #colorLiteral(red: 0.2980392157, green: 0.6862745098, blue: 0.3137254902, alpha: 1), text: "Рейтинг: 8.233", textColor: .white)
    let filmTextLabel = BaseLabel(backgroundColor: #colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.2588235294, alpha: 1), text: """
            Терзаемый хронической бессонницей и отчаянно пытающийся вырваться из мучительно скучной жизни, клерк встречает некоего Тайлера Дардена, харизматического торговца мылом с извращенной философией. Тайлер уверен, что самосовершенствование — удел слабых, а саморазрушение — единственное, ради чего стоит жить. Пройдет немного времени, и вот уже главные герои лупят друг друга почем зря на стоянке перед баром, и очищающий мордобой доставляет им высшее блаженство. Приобщая других мужчин к простым радостям физической жестокости, они основывают тайный Бойцовский Клуб, который имеет огромный успех. Но в концовке фильма всех ждет шокирующее открытие, которое может привести к непредсказуемым событиям…
           Пройдет немного времени, и вот уже главные герои лупят друг друга почем зря на стоянке перед баром, и очищающий мордобой доставляет им высшее блаженство. Приобщая других мужчин к простым радостям физической жестокости, они основывают тайный Бойцовский Клуб, который имеет огромный успех. Но в концовке фильма всех ждет шокирующее открытие, которое может привести к непредсказуемым событиям…
           Пройдет немного времени, и вот уже главные герои лупят друг друга почем зря на стоянке перед баром, и очищающий мордобой доставляет им высшее блаженство. Приобщая других мужчин к простым радостям физической жестокости, они основывают тайный Бойцовский Клуб, который имеет огромный успех. Но в концовке фильма всех ждет шокирующее открытие, которое может привести к непредсказуемым событиям…
           Пройдет немного времени, и вот уже главные герои лупят друг друга почем зря на стоянке перед баром, и очищающий мордобой доставляет им высшее блаженство. Приобщая других мужчин к простым радостям физической жестокости, они основывают тайный Бойцовский Клуб, который имеет огромный успех. Но в концовке фильма всех ждет шокирующее открытие, которое может привести к непредсказуемым событиям…
    """,
                                  textColor: .white)
    
    // MARK: - ViewController Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Fight Club"
        setupViews()
    }
    
    // MARK: - Views setup
    
    fileprivate func setupViews() {
        addViews()
        addConstraints()
    }
    
    fileprivate func addViews() {
        // viewContainer
        view.addSubview(scrollView)
        
        scrollView.addSubview(mainContainer)
        
        leftTopContainer.addSubview(pictureImage)
        
        rightTopContainer.addSubview(originalLabel)
        rightTopContainer.addSubview(yearLabel)
        rightTopContainer.addSubview(rating)
        
        bottomContainer.addSubview(filmTextLabel)
        
    }
    
    fileprivate func addConstraints() {
        scrollView.edgesToSuperview(usingSafeArea: true)
        // topContainer
        mainContainer.edges(to: scrollView, insets: TinyEdgeInsets(top: 0, left: 0, bottom: 0, right: 0), isActive: true)
        mainContainer.stack([topGroupContainer,bottomContainer, UIView()], axis: .vertical,  width: nil, height: nil, spacing: 10)
        
        
        topGroupContainer.stack([leftTopContainer, rightTopContainer], axis: .horizontal, width: mainContainer.frame.width / 2, height: nil,  spacing: 0)
        
        bottomContainer.height(mainContainer.frame.height + filmTextLabel.intrinsicContentSize.height, relation: .equalOrGreater,  isActive: true)
        bottomContainer.width(mainContainer.frame.width, relation: .equalOrGreater, isActive: true)
        
        // picture
        pictureImage.edges(to: leftTopContainer,  insets: TinyEdgeInsets(top: 16, left: 16, bottom: 16, right: 16),  isActive: true)
        pictureImage.aspectRatio(2/3)

        
        // original
        originalLabel.height(25)
        originalLabel.top(to: pictureImage, offset: 0)
        
        // year
        yearLabel.height(25)
        yearLabel.top(to: originalLabel, offset: 32)
        
        // rating
        rating.height(25)
        rating.top(to: yearLabel, offset: 32)
        
        // film description text
        filmTextLabel.height(0, relation: .equalOrGreater)
        filmTextLabel.top(to: bottomContainer, offset: 16)
        filmTextLabel.left(to: bottomContainer, offset: 16)
        filmTextLabel.right(to: bottomContainer, offset: -16)
        
    }
    
    
}
