/*
 ShiftIt: Resize windows with Hotkeys
 Copyright (C) 2010  Filip Krikava
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 
 */

#import "DefaultShiftItActions.h"
#import "FMTDefines.h"

BOOL CloseTo(float a, float b) {
	return fabs(a - b) < 20;
}

NSRect ShiftIt_Left(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	r.origin.x = 0;
	r.origin.y = 0;
	
	r.size.width = screenRect.size.width / 2;
	r.size.height = screenRect.size.height;
	
	float w = windowRect.size.width;
	float h = windowRect.size.height;
	float x = windowRect.origin.x;
	float sw = screenRect.size.width;

	if (windowRect.origin.y == screenRect.origin.y && CloseTo(x, 0) && CloseTo(h, r.size.height)) {
		if (CloseTo(w, sw / 2)) {
			r.size.width = floor(sw / 3.0);
		} else if (CloseTo(w, floor(sw / 3.0))) {
			r.size.width = floor(sw * 2.0 / 3.0);
		}		
	}
	
	return r;
}

NSRect ShiftIt_Right(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	r.origin.y = 0;
	
	r.size.width = screenRect.size.width / 2;
	r.size.height = screenRect.size.height;
	
	float w = windowRect.size.width;
	float h = windowRect.size.height;
	float x = windowRect.origin.x;
	float sw = screenRect.size.width;

	if (CloseTo(windowRect.origin.y, screenRect.origin.y) && CloseTo(x, sw - w) && CloseTo(h, r.size.height)) {
		if (CloseTo(w, sw / 2)) {
			r.size.width = floor(sw / 3.0);
		} else if (CloseTo(w, floor(sw / 3.0))) {
			r.size.width = floor(sw * 2.0 / 3.0);
		}
	}
	
	r.origin.x = screenRect.size.width - r.size.width;

	return r;
}

NSRect ShiftIt_Top(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	r.origin.y = 0;
	
	r.size.width = screenRect.size.width;
	r.size.height = screenRect.size.height / 2;
	
	float w = windowRect.size.width;
	float h = windowRect.size.height;
	float x = windowRect.origin.x;
	float sw = screenRect.size.width;
	
	if (CloseTo(windowRect.origin.y, screenRect.origin.y) && CloseTo(x, floor((sw - w) / 2)) && CloseTo(h, r.size.height)) {
		if (CloseTo(w, screenRect.size.width)) {
			r.size.width = floor(screenRect.size.width / 3.0);
		}
	}
	
	r.origin.x = floor((screenRect.size.width - r.size.width) / 2);
	
	return r;
}

NSRect ShiftIt_Bottom(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	r.origin.y = screenRect.size.height / 2;
	
	r.size.width = screenRect.size.width;
	r.size.height = screenRect.size.height / 2;

	float w = windowRect.size.width;
	float h = windowRect.size.height;
	float x = windowRect.origin.x;
	float sw = screenRect.size.width;
	
	if (CloseTo(windowRect.origin.y, screenRect.origin.y + screenRect.size.height / 2) && CloseTo(x, floor((sw - w) / 2)) && CloseTo(h, r.size.height)) {
		if (CloseTo(w,screenRect.size.width)) {
			r.size.width = floor(screenRect.size.width / 3.0);
		}
	}
	
	r.origin.x = floor((screenRect.size.width - r.size.width) / 2);
	
	return r;
}

NSRect ShiftIt_TopLeft(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	r.origin.x = 0;
	r.origin.y = 0;
	
	r.size.width = screenRect.size.width / 2;
	r.size.height = screenRect.size.height / 2;
	
	float w = windowRect.size.width;
	float h = windowRect.size.height;
	float x = windowRect.origin.x;
	float sw = screenRect.size.width;
	
	if (CloseTo(windowRect.origin.y, screenRect.origin.y) && CloseTo(x, 0) && CloseTo(h, r.size.height)) {
		if (CloseTo(w, sw/2)) {
			r.size.width = floor(sw / 3.0);
		} else if (CloseTo(w, floor(sw / 3.0))) {
			r.size.width = floor(sw * 2.0 / 3.0);
		}
	}
	
	
	return r;
}

NSRect ShiftIt_TopRight(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	r.origin.y = 0;
	
	r.size.width = screenRect.size.width / 2;
	r.size.height = screenRect.size.height / 2;
	
	float w = windowRect.size.width;
	float h = windowRect.size.height;
	float x = windowRect.origin.x;
	float sw = screenRect.size.width;
	
	if (CloseTo(windowRect.origin.y, screenRect.origin.y) && CloseTo(x, sw - w) && CloseTo(h, r.size.height)) {
		if (CloseTo(w, sw / 2)) {
			r.size.width = floor(sw / 3.0);
		} else if (CloseTo(w, floor(sw / 3.0))) {
			r.size.width = floor(sw * 2.0 / 3.0);
		}
	}
	
	r.origin.x = screenRect.size.width - r.size.width;	
	
	return r;
}

NSRect ShiftIt_BottomLeft(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	r.origin.x = 0;
	r.origin.y = screenRect.size.height / 2;
	
	r.size.width = screenRect.size.width / 2;
	r.size.height = screenRect.size.height / 2;
	
	float w = windowRect.size.width;
	float h = windowRect.size.height;
	float x = windowRect.origin.x;
	float sw = screenRect.size.width;
	
	if (CloseTo(windowRect.origin.y, screenRect.origin.y + screenRect.size.height / 2) && CloseTo(x, 0) && CloseTo(h, r.size.height)) {
		if (CloseTo(w, sw / 2)) {
			r.size.width = floor(sw / 3.0);
		} else if (CloseTo(w, floor(sw / 3.0))) {
			r.size.width = floor(sw * 2.0 / 3.0);
		}
	}
	
	return r;
}

NSRect ShiftIt_BottomRight(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	r.origin.y = screenRect.size.height / 2;
	
	r.size.width = screenRect.size.width / 2;
	r.size.height = screenRect.size.height / 2;
	
	float w = windowRect.size.width;
	float h = windowRect.size.height;
	float x = windowRect.origin.x;
	float sw = screenRect.size.width;
	
	if (CloseTo(windowRect.origin.y, screenRect.origin.y + screenRect.size.height / 2) && CloseTo(x, sw - w) && CloseTo(h, r.size.height)) {
		if (CloseTo(w, sw / 2)) {
			r.size.width = floor(sw / 3.0);
		} else if (CloseTo(w, floor(sw / 3.0))) {
			r.size.width = floor(sw * 2.0 / 3.0);
		}
	}
	
	r.origin.x = screenRect.size.width - r.size.width;	
	
	return r;
}

NSRect ShiftIt_FullScreen(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	r.origin.x = 0;
	r.origin.y = 0;
	
	r.size.width = screenRect.size.width;
	r.size.height = screenRect.size.height;
	
	return r;
}

NSRect ShiftIt_Center(NSRect screenRect, NSRect windowRect) {
	NSRect r;
	
	float w = floor(screenRect.size.width * 0.85);
	float h = floor(screenRect.size.height * 0.85);
	
	if (CloseTo(w, windowRect.size.width) && CloseTo(h, windowRect.size.height)) {
		w = floor(screenRect.size.width * 0.6);
		h = floor(screenRect.size.height * 0.6);
	}

	
	r.origin.x = (screenRect.size.width / 2) - (w / 2);
	r.origin.y = (screenRect.size.height / 2) - (h / 2);	
	
	r.size.width = w;
	r.size.height = h;
	
	return r;
}
