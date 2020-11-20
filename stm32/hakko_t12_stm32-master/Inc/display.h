/*
 * core.h
 *
 *  Created on: 12 ���. 2019 �.
 *      Author: Alex
 */

#ifndef DISPLAY_H_
#define DISPLAY_H_

#include "main.h"
#include "oled.h"
#include "config.h"

class DSPL : public U8G2 {
	public:
		DSPL(void)											{ }
		void		init(const u8g2_cb_t *rotation);
		void		mainInit(void)							{ msg_buff[0] = tip_name[0] = 0; }
		void		status(const char *msg);
		void 		msgClean(void);
		void 		msgOFF(void);
		void		msgON(void);
		void 		msgCold(void);
		void 		msgReady(void);
		void 		msgIdle(void);
		void 		msgStandby(void);
		void 		msgBoost(void);
		void 		timeToOff(uint8_t time);
		void 		tip(const char *tip_name);
		void		fanSpeed(uint8_t pcnt);
		void 		pidInit(void);
		void		pidSetLowerAxisLabel(const char *label);
		void 		pidModify(uint8_t index, uint16_t value);
		void 		autoPidInfo(const char *message);
		void		autoPidCurrentLoop(uint16_t loop, uint32_t period);
		void		pidPutData(int16_t temp, uint16_t disp);
		void 		pidShowGraph(uint8_t pwr);
		void 		pidShowMenu(uint16_t pid_k[3], uint8_t index);
		void		mainShow(uint16_t t_set, uint16_t t_cur, int16_t  t_amb, uint8_t p_applied,
							bool is_celsius, bool tip_calibrated, bool tilt_iron_used=false);
		void 		tuneShow(uint16_t tune_temp, uint16_t temp, uint8_t pwr_pcnt);
		void 		calibShow(const char* tip_name, uint16_t ref_temp, uint16_t current_temp,
							uint16_t real_temp, bool celsius, uint8_t power, bool on, bool ready, uint8_t int_temp_pcnt);
		void 		calibManualShow(const char* tip_name, uint16_t ref_temp, uint16_t current_temp,
							uint16_t setup_temp, bool celsius, uint8_t power, bool on, bool ready);
		void 		tipListShow(const char* title,  TIP_ITEM list[], uint8_t list_len, uint8_t index, bool name_only);
		void 		menuItemShow(const char* title, const char* item, const char* value, bool modify);
		void 		errorShow(void);
		void		errorMessage(const char *msg);
		void 		debugShow(uint16_t current, uint16_t temp, uint16_t ambient);
		void		showVersion(void);
	private:
		char      	msg_buff[8]	 = {0};                		// the buffer for the message in top right corner
		char      	tip_name[10] = {0};                		// the buffer for tip name
		char		err_msg[40]		= {0};					// the buffer of error message
		// PID tune data
		uint32_t	default_mode = 0;						// The time in ms to return to the default mode
		char		modified_value[25]	= {0};				// The buffer to show current value of being modified coefficient
		char		lower_axis[3]		= {0}; 				// Lower axis label (2 symbols and '\0' at the end)
		int16_t		h_temp[80]	= {0};						// The temperature history data
		uint16_t	h_disp[80]	= {0};						// The dispersion  history data
		uint8_t		data_index	= 0;						// The index in the array to put new data
		bool		full_buff	= false;					// Whether the history data buffer is full
};

void	DPIDK_init(void);
void	DPIDK_modify(uint8_t index, uint16_t value);
void	DPIDK_putData(int16_t temp, uint16_t disp);
void	DPIDK_showGraph(void);
void	DPIDK_showMenu(uint16_t pid_k[3], uint8_t index);

void 	DISPL_showCalibration(const char* tip_name, uint16_t ref_temp, uint16_t current_temp, uint16_t real_temp, bool celsius, uint8_t power, bool on, bool ready);
void 	DISPL_showCalibManual(const char* tip_name, uint16_t ref_temp, uint16_t current_temp, uint16_t setup_temp, bool celsius, uint8_t power, bool on, bool ready);
void	DISPL_showTipList(const char* title,  TIP_ITEM list[], uint8_t list_len, uint8_t index, bool name_only);
void	DISPL_showMenuItem(const char* title, const char* item, const char* value, bool modify);
void	DISPL_showError(void);
void	DISPL_resetScale(void);
void 	DDEBUG_show(int16_t delta_t, uint32_t td, uint32_t pd, int ip, int ap);
#endif
