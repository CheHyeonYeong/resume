// 페이지 설정
#set page(paper: "a4", margin: (x: 2cm, y: 1.5cm))
#set text(font: "Malgun Gothic", size: 10pt, lang: "ko")
#set par(leading: 0.8em, justify: true)

// 스타일 함수
#let section(title) = {
  v(0.8em)
  text(size: 13pt, weight: "bold", fill: rgb("#1a1a2e"))[#title]
  v(-0.3em)
  line(length: 100%, stroke: 0.5pt + rgb("#1a1a2e"))
  v(0.3em)
}

#let experience(company, role, period, description) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", size: 11pt)[#company],
    text(size: 9pt, fill: rgb("#666"))[#period]
  )
  text(size: 9pt, fill: rgb("#444"))[#role]
  v(0.3em)
  text(size: 9pt)[#description]
  v(0.5em)
}

#let skill-tag(content) = {
  box(
    fill: rgb("#f0f0f0"),
    radius: 3pt,
    inset: (x: 6pt, y: 3pt),
    text(size: 8pt)[#content]
  )
}

// 헤더
#align(center)[
  #text(size: 24pt, weight: "bold")[채현영]
  #v(-0.3em)
  #text(size: 12pt, fill: rgb("#666"))[Backend Developer]
  #v(0.3em)
  #text(size: 9pt)[
    chehyeonyeong\@gmail.com  |
    #link("https://github.com/chehyeonyeong")[GitHub]  |
    #link("https://velog.io/@gusdudco6")[Velog]  |
    #link("https://code-chy.tistory.com/")[Tistory]
  ]
]

#v(0.5em)

// 자기소개
#block(
  fill: rgb("#f8f9fa"),
  radius: 5pt,
  inset: 12pt,
  width: 100%,
)[
  기술의 도입이 단순히 "사용"에 그치지 않고, *비즈니스의 성장 속도를 실질적으로 가속*하는 것에 집중하는 백엔드 개발자입니다. AI 에이전트를 활용해 반복적인 마이그레이션 업무를 자동화하고, AOP와 JVM 최적화를 통해 시스템의 안정성과 성능을 확보하는 등 엔지니어링 효율 극대화에 강점이 있습니다.
]

// 핵심 역량
#section[Core Competencies]

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *AI 활용*
    - 사내 Claude Code 도입 추진: 마이그레이션 commands 제작 및 CLAUDE.md 작성
    - Claude, Cursor를 활용한 TDD 기반 마이그레이션 진행 중
    - 코헤콘 주최: Manus AI로 이벤트 기획·운영 자동화
  ],
  [
    *문제 해결*
    - AOP 기반 로깅 시스템 설계로 중복 코드 80% 감소
    - JVM 튜닝으로 배치 처리 지연 시간 40% 개선
    - 팀 컨벤션 정립으로 코드 리뷰 시간 50% 단축
  ]
)

// 기술 스택
#section[Tech Stack]

#v(0.3em)
#stack(dir: ltr, spacing: 5pt,
  skill-tag[Java], skill-tag[Spring Boot], skill-tag[JPA], skill-tag[MyBatis],
  skill-tag[MySQL], skill-tag[Oracle], skill-tag[MSSQL],
)
#v(0.2em)
#stack(dir: ltr, spacing: 5pt,
  skill-tag[Docker], skill-tag[AWS EC2], skill-tag[Nginx], skill-tag[Jenkins], skill-tag[Git],
)
#v(0.2em)
#stack(dir: ltr, spacing: 5pt,
  skill-tag[Claude Code], skill-tag[CodeRabbit], skill-tag[JavaScript], skill-tag[Android],
)

// 경력
#section[Experience]

#grid(
  columns: (1fr, auto),
  text(weight: "bold", size: 12pt)[드림소프트웨어주식회사],
  text(size: 9pt, fill: rgb("#666"))[2024.09 - 2025.11 (1년 3개월)]
)
#text(size: 10pt, fill: rgb("#444"))[제품개발팀 | 책임 | 정규직]
#v(0.2em)
#text(size: 9pt, fill: rgb("#666"))[설비관리시스템(CMMS/EAM) 국내 시장점유율 1위 기업. 인천공항공사, 현대미포조선, 대웅제약 등 100여개 고객사 대상 B2B 솔루션 개발.]

#v(0.5em)

*1. AI Native: 개발 패러다임의 전환*

#text(size: 9.5pt)[
  *Claude Code 기반 프레임워크 마이그레이션 자동화*
  - 레거시(Struts) → Spring Boot 2.5 전환 시 반복적인 수동 재작성으로 인한 생산성 저하 문제
  - Claude Code 기반 커스텀 CLI 명령어(Migration Agent) 구축
  - *성과*: 모듈별 마이그레이션 소요 시간 83% 절감 (3일 → 0.5일)

  *신입사원 온보딩 시스템 체계화*
  - Confluence 기반 'End-to-End 핸즈온 가이드' 구축
  - 사내 프레임워크 및 고객사별 도메인 지식 문서화
  - *성과*: 신규 인력 실무 투입 준비 기간 50% 단축 (4주 → 2주)
]

#v(0.3em)

*2. Problem Solving: 기술로 비즈니스 가치 증명*

#text(size: 9.5pt)[
  *AOP로 중복 코드 80% 감소*
  - Interceptor로 15개 컨트롤러 인증 로직 중앙 집중화
  - 커스텀 어노테이션 + AOP로 67개 메서드 로깅 자동화
  - *성과*: 중복 코드 80% 감소 (1,000줄 → 200줄), 로그 유실률 0%

  *JVM 튜닝을 통한 배치 성능 개선*
  - G1GC → ParallelGC 전환 및 힙 메모리 최적화
  - *성과*: Full GC 평균 소요 시간 40% 개선 (1.2초 → 0.7초)
]

#v(0.3em)

*3. Engineering Culture: SVN → GitHub 전환*

#text(size: 9.5pt)[
  - Squash & Merge 정책 수립으로 히스토리 오염 방지
  - PR Template 설계로 코드 리뷰 품질 향상
  - *성과*: 팀 내 코드 리뷰 참여율 100% 달성
]

// 프로젝트
#section[Project]

#grid(
  columns: (1fr, auto),
  text(weight: "bold", size: 11pt)[Cohi-Chat | 1:1 일정예약시스템],
  text(size: 9pt, fill: rgb("#666"))[2026.01 - 진행 중]
)
#text(size: 9pt, fill: rgb("#444"))[팀 리더 & 백엔드 및 인프라 개발 | #link("https://github.com/chehyeonyeong/cohi-chat")[GitHub]]

#v(0.2em)
#text(size: 9.5pt)[
  *해결한 문제*: 커피챗 일정 조율 비효율 → 실시간 빈 슬롯 확인 & Google Calendar 자동 동기화

  - Claude Code로 TDD 기반 페어 프로그래밍, CodeRabbit AI 코드리뷰 도입 (PR당 평균 2건 버그 사전 탐지)
  - Calendar/TimeSlot/Booking CRUD API 설계 (Spring Boot 3.5, Java 21)
  - Google Calendar API 연동, Graceful Degradation 처리
  - AWS EC2 + Docker Compose 기반 컨테이너 배포, 테스트 커버리지 85%
]

#v(0.2em)
#stack(dir: ltr, spacing: 4pt,
  skill-tag[Java 21], skill-tag[Spring Boot 3.5], skill-tag[JPA], skill-tag[JWT],
  skill-tag[Google Calendar API], skill-tag[Docker], skill-tag[AWS EC2],
)

// 대외활동
#section[Activity]

#grid(
  columns: (1fr, auto),
  text(weight: "bold", size: 11pt)[COHE-CON 2026 | 주최자],
  text(size: 9pt, fill: rgb("#666"))[2026.01.25]
)
#text(size: 9.5pt)[
  주니어 개발자 컨퍼런스 기획 및 운영 (참가자 19명, 연사 3명) | Manus AI로 웹사이트·발표자료 자동 생성
]

// 하단 정보
#section[Education & Certification]

#grid(
  columns: (1fr, 1fr),
  [
    *덕성여자대학교* 컴퓨터공학과 #text(size: 9pt, fill: rgb("#666"))[(2019.03 - 2024.02)]
  ],
  [
    *SQLD* 한국데이터베이스진흥센터 #text(size: 9pt, fill: rgb("#666"))[(2023.07)]
  ]
)
