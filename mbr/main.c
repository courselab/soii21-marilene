/* <file> - <One-line note about this file>
 
   Copyright (c) 2021, Garcia M. A. 

   This piece of software is a derivative work of SYSeg, by Monaco F. J.
   SYSeg is distributed under the license GNU GPL v3, and is available
   at the official repository https://www.gitlab.com/monaco/syseg.

   This file is part of <PROJECT>.

   <PROJECT> is free software: you can redistribute it and/or modify
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




#include <mbr.h>

int main()
{
  int count = 0;
  char cmd[BUFFER_MAX_LENGTH];

  /* Clear screen. */
  
  clear();

  /* Main loop. */
  
  while (1)
    {
      read (cmd);		            /* Read user command. */

      /* Process user command. */
      
      if (compare(cmd, HELP_CMD))       /* Command help. */
	      printnl ("try more");
      else if (compare(cmd, QUIT_CMD))  /* Command quit. */
	      printnl ("impossible");

      /* Try show hours 
      else if (compare(cmd, DATE_CMD))
        date();
      */

      else
	      printnl (NOT_FOUND);
    
      count += 1;
      if(count == 12){
        clear();
        count = 0;
      }
    }
  
  return 0;

}
