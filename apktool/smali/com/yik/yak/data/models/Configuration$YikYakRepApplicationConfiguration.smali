.class public Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public applicationUrl:Ljava/lang/String;

.field public entryText:Ljava/lang/String;

.field final synthetic this$0:Lcom/yik/yak/data/models/Configuration;

.field public yakarmaThreshold:I


# direct methods
.method public constructor <init>(Lcom/yik/yak/data/models/Configuration;)V
    .locals 1

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->this$0:Lcom/yik/yak/data/models/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/16 v0, 0x7530

    iput v0, p0, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->yakarmaThreshold:I

    .line 115
    const-string v0, "Apply to be a Yik Yak Rep!"

    iput-object v0, p0, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->entryText:Ljava/lang/String;

    .line 116
    const-string v0, "http://goo.gl/forms/jgjkAodnqy"

    iput-object v0, p0, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->applicationUrl:Ljava/lang/String;

    return-void
.end method
