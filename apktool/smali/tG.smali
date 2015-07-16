.class LtG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:LtF;


# direct methods
.method constructor <init>(LtF;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, LtG;->b:LtF;

    iput-object p2, p0, LtG;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, LtG;->b:LtF;

    iget-object v0, v0, LtF;->b:LtD;

    iget-object v0, v0, LtD;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-static {v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)LtC;

    move-result-object v0

    iget-object v1, p0, LtG;->b:LtF;

    iget-object v1, v1, LtF;->b:LtD;

    invoke-static {v1}, LtD;->a(LtD;)Ltk;

    move-result-object v1

    iget-object v2, p0, LtG;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LtC;->a(Ltk;Ljava/lang/String;)V

    .line 476
    return-void
.end method
