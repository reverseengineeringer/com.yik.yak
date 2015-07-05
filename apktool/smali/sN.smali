.class LsN;
.super LsM;
.source "SourceFile"


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:LsM;


# direct methods
.method constructor <init>(LsM;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1419
    iput-object p1, p0, LsN;->c:LsM;

    iput-object p2, p0, LsN;->b:Ljava/lang/String;

    iget-object v0, p1, LsM;->a:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LsM;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;LsH;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, LsN;->b:Ljava/lang/String;

    return-object v0
.end method
