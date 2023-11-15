

                const birthYearEl = document.querySelector('#birth-year')
                        isYearOptionExisted = false;
                        birthYearEl.addEventListener('focus', function () {
                            if (!isYearOptionExisted) {
                                isYearOptionExisted = true
                                for (var i = 1940; i <= 2022; i++) {
                                    const YearOption = document.createElement('option')
                                    YearOption.setAttribute('value', i)
                                    YearOption.innerText = i
                                    this.appendChild(YearOption);
                                }
                            }
                        });

const birthMonthEl = document.querySelector('#birth-month')
                    isMonthOptionExisted = false;
                    birthMonthEl.addEventListener('focus', function () {
                        if (!isMonthOptionExisted) {
                            isMonthOptionExisted = true
                            for (var i = 1; i <= 12; i++) {
                                const MonthOption = document.createElement('option')
                                MonthOption.setAttribute('value', i)
                                MonthOption.innerText = i
                                this.appendChild(MonthOption)
                            }
                        }
                    });

const birthDayEl = document.querySelector('#birth-day')
                    isDayOptionExisted = false;
                    birthDayEl.addEventListener('focus', function () {
                        if (!isDayOptionExisted) {
                            isDayOptionExisted = true
                            for (var i = 1; i <= 31; i++) {
                                const DayOption = document.createElement('option')
                                DayOption.setAttribute('value', i)
                                DayOption.innerText = i
                                this.appendChild(DayOption)
                            }

                        }
                    });

const u_nameInput = document.getElementById('u_name');
                const u_idInput = document.getElementById('u_id');
                const u_pwInput = document.getElementById('pwd');
                const u_repwInput = document.getElementById('repwd');
                const u_email_id = document.getElementById('email_id');

                //회원가입 활성화 비활성화 만들기
                const newUser = document.getElementById('newUser')

                function checkInputs() {
                    if (u_nameInput.value.trim() !== '' && u_idInput.value.trim() !== '' && u_pwInput.value.trim() !== '' && u_repwInput.value.trim() !== '' && u_email_id.value.trim() !== '') {
                        newUser.removeAttribute('disabled');
                    } else {
                        newUser.setAttribute('disabled', true);
                    }
                }
                //데이터 들어갔는지 확인
                u_nameInput.addEventListener('input', checkInputs);
                u_idInput.addEventListener('input', checkInputs);
                u_pwInput.addEventListener('input', checkInputs);
                u_repwInput.addEventListener('input', checkInputs);
                u_email_id.addEventListener('input', checkInputs);


                function btn() {
                    alert("회원가입이 완료되었습니다");
                }

                newUser.addEventListener("click", function () {
                    window.location.href = "./p.html"  //이곳에 메인페이지 주소 넣으시면 됩니다
		})