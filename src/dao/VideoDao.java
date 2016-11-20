/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Video;

/**
 *
 * @author milandobrota
 */
public interface VideoDao extends GenericDao<Video, Integer> {

    Video createVideo(String link, Integer postId);
    
}
