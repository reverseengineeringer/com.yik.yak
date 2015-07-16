.class LsS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I

.field final synthetic d:LsQ;


# direct methods
.method constructor <init>(LsQ;Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1800
    iput-object p1, p0, LsS;->d:LsQ;

    iput-object p2, p0, LsS;->a:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    iput-object p3, p0, LsS;->b:Landroid/app/Activity;

    iput p4, p0, LsS;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)V
    .locals 3

    .prologue
    .line 1803
    iget-object v0, p0, LsS;->a:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->a(Landroid/graphics/Bitmap;)V

    .line 1804
    iget-object v0, p0, LsS;->a:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    invoke-virtual {v0, p2}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->a(I)V

    .line 1806
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LsS;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mixpanel/android/surveys/SurveyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1807
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1808
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1809
    const-string v1, "com.mixpanel.android.surveys.SurveyActivity.INTENT_ID_KEY"

    iget v2, p0, LsS;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1810
    iget-object v1, p0, LsS;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1811
    return-void
.end method
