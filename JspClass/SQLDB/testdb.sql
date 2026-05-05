DROP TABLE IF EXISTS subject;

-- '과목' 테이블 생성
CREATE TABLE subject (
    id INT NOT NULL,                -- 고유번호 (PK)
    name VARCHAR(20) NOT NULL,      -- 과목명
    professor_id INT NOT NULL,      -- 교수번호
    PRIMARY KEY (id)                -- 고유번호를 기본키로 지정
);

-- 데이터 잘 들어가는지 테스트용 입력
INSERT INTO subject (id, name, professor_id) VALUES (101, '자바프로그래밍', 501);
INSERT INTO subject (id, name, professor_id) VALUES (102, '데이터베이스', 502);

-- 데이터 확인
SELECT * FROM subject;