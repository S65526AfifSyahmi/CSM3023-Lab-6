/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.javabeans;
/**
 *
 * @author Ahmad Afif Syahmi bin Ahmad Rozali
 */
public class Student {
    
    private String studNo, studName, studProgram;
    
    public String getStudNo() {
        return studNo;
    }

    public void setStudNo(String studNo) {
        this.studNo = studNo;
    }

    public String getStudName() {
        return studName;
    }

    public void setStudName(String studName) {
        this.studName = studName;
    }

    public String getStudProgram() {
        return studProgram;
    }

    public void setStudProgram(String studProgram) {
        this.studProgram = studProgram;
    }
    
    public String getProgramAsString() {
        switch (getStudProgram()) {
            case "1":
                return "BSC (Software Engineering)";
                
            case "2":
                return "BSC with Maritime Informatics";
                
            case "3":
                return "BSC (Mobile Computing)";
                
            default:
                return "";
        }
    }
    
}