.class LtA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ltz;


# direct methods
.method constructor <init>(Ltz;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, LtA;->b:Ltz;

    iput-object p2, p0, LtA;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, LtA;->b:Ltz;

    iget-object v0, v0, Ltz;->b:Ltx;

    iget-object v0, v0, Ltx;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-static {v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)Ltw;

    move-result-object v0

    iget-object v1, p0, LtA;->b:Ltz;

    iget-object v1, v1, Ltz;->b:Ltx;

    invoke-static {v1}, Ltx;->a(Ltx;)Ltg;

    move-result-object v1

    iget-object v2, p0, LtA;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ltw;->a(Ltg;Ljava/lang/String;)V

    .line 476
    return-void
.end method
