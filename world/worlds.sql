
CREATE TABLE city_me
(
  ID          INT          NOT NULL COMMENT '도시 아이디',
  Name        VARCHAR(200) NULL     COMMENT '도시 이름',
  Countrycode VARCHAR(200) NULL     COMMENT '국가 코드',
  District    VARCHAR(200) NULL     COMMENT '지역',
  Population  INT          NULL     COMMENT '인구수',
  Code        VARCHAR(200) NOT NULL COMMENT '코드'
);

CREATE TABLE country_me
(
  Code           VARCHAR(200) NOT NULL COMMENT '코드',
  Name           VARCHAR(200) NULL     COMMENT '국가이름',
  Cotinent       ENUM         NULL     COMMENT '대륙',
  Region         VARCHAR(200) NULL     COMMENT '지역',
  SurfaceArea    DECIMAL      NULL     COMMENT '면적',
  Indepyear      SMALLINT     NULL     COMMENT '독립연도',
  Polpulation    INT          NULL     COMMENT '인구수',
  LifeExpectancy DECIMAL      NULL     COMMENT '기대수명',
  GNP            DECIMAL      NULL     COMMENT '국민총생산',
  GNPOld         DECIMAL      NULL     COMMENT '과거 국민총생산',
  LocalName      VARCHAR(200) NULL     COMMENT '지역이름',
  GovermmentForm VARCHAR(200) NULL     COMMENT '정부',
  HeadofState    VARCHAR(200) NULL     COMMENT '대통령',
  Capital        INT          NULL     COMMENT '수도',
  Code2          VARCHAR(200) NULL     COMMENT '코드2',
  PRIMARY KEY (Code)
);

CREATE TABLE countrylanguage_me
(
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가코드',
  LanguaCode  VARCHAR(200) NULL     COMMENT '언어',
  IsOfficial  ENUM         NULL     COMMENT '공통언어',
  percentage  DECIMAL      NULL     COMMENT '문맹률',
  Code        VARCHAR(200) NOT NULL COMMENT '코드',
  Code        VARCHAR(200) NOT NULL COMMENT '코드'
);

ALTER TABLE city_me
  ADD CONSTRAINT FK_country_me_TO_city_me
    FOREIGN KEY (Code)
    REFERENCES country_me (Code);

ALTER TABLE countrylanguage_me
  ADD CONSTRAINT FK_country_me_TO_countrylanguage_me
    FOREIGN KEY (Code)
    REFERENCES country_me (Code);
