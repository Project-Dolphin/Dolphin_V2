임시 작성

view_model 하위의 bloc은 데이터를 관리하는 Bloc
Bus, Diet, HomeData 등 연관 있는 데이터 끼리 묶어서 관리할 예정

그 외에 {pageName}_bloc 폴더 하위는 페이지 자체 상태관리가 필요한 페이지
ex) Dashboard의 경우 하단 Floating Navbar,
    식단의 경우 아 | 점 | 저 | 기숙사 | 해사대
    일정의 경우 FocusedDate