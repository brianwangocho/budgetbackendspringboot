
drop table if exists budget;
create table budget(

`id`                int(11)                 not null auto_increment,
`account_balance`    decimal(12,4)           not null,
`from`               date                     default null,
`to`                 date                   default null,
`flag`              varchar (45)            default null,
`created_at`        date                    default null,
`updated_at`        date                    default null,

PRIMARY KEY(id)

)
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8;

    insert into `generalLedger`(`id`,`account_balance`,`from`,
    `to`,`flag`,`created_at`,`updated_at`)
    values
    (1,'10000','2019-03-01','2019-03-01',1,'2019-03-01','2019-03-01');


drop table if exists transactions;
create table transactions(
  `id`              int(11)                 not null auto_increment,
  `amount`          decimal (12,4)          not null,
  `budget_id`        int(11)                not null,
  `type`            varchar(100)            default null,
  `created_on`      date                    default null,

    PRIMARY KEY(id)
    KEY `budget_id` (`budget_id`),
     CONSTRAINT `transaction_fk_1` FOREIGN KEY (`budget_id`) REFERENCES `budget` (`id`)

  )
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

  insert into transactions (id, amount, budget_id,type,created_on)
   values
  (1,'1000',1,'transport','2019-03-01');
