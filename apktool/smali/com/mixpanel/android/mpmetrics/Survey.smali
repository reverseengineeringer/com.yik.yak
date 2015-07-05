.class public Lcom/mixpanel/android/mpmetrics/Survey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mixpanel/android/mpmetrics/Survey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:I

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ltf;

    invoke-direct {v0}, Ltf;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/Survey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    :try_start_0
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/Survey;->a:Lorg/json/JSONObject;

    .line 45
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mixpanel/android/mpmetrics/Survey;->b:I

    .line 46
    const-string v1, "collections"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 48
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mixpanel/android/mpmetrics/Survey;->c:I

    .line 50
    const-string v1, "questions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 52
    new-instance v0, Lsi;

    const-string v1, "Survey has no questions."

    invoke-direct {v0, v1}, Lsi;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lsi;

    const-string v2, "Survey JSON was unexpected or bad"

    invoke-direct {v1, v2, v0}, Lsi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 54
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 56
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 57
    new-instance v4, Ltg;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v3, v5}, Ltg;-><init>(Lcom/mixpanel/android/mpmetrics/Survey;Lorg/json/JSONObject;Ltf;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->d:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->c:I

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->d:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/Survey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
