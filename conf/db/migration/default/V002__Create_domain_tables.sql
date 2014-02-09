/**
 * Creates database tables for storing domain data.
 *
 * Copyright 2014 Mohiva Organisation (license at mohiva dot com)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

create table texts
(
  id uuid primary key not null,
  title varchar not null,
  contents clob not null,
  privacy_level tinyint not null,
  source_id uuid references texts,
  creator_id uuid not null references users,
  creation_time_utc timestamp not null,
  update_time_utc timestamp not null,
  is_soft_deleted boolean not null default false
);
