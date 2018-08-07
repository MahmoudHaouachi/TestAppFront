import { Injectable } from '@angular/core';
import { Http } from '@angular/http';

@Injectable()
export class AppConfigService {
  private appConfig;

  constructor(private http: Http) { }

  loadAppConfig() {
    return this.http.get('/assets/data/appConfig.json')
      .toPromise()
      .then(data => {
        this.appConfig = data;
      });
  }

  getConfig() {
    return this.appConfig;
  }
}
