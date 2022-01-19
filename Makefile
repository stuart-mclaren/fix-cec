fix-cec: main.cc
	g++ -Wall -I /opt/vc/include -L /opt/vc/lib -l bcm_host -l vchiq_arm -l vcos main.cc -o fix-cec

clean:
	rm fix-cec

install: fix-cec
	cp fix-cec /usr/local/bin
	cp fix-cec.service /etc/systemd/system/
	systemctl enable fix-cec
